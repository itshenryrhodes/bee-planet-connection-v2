(async function(){
  const root = document.getElementById("d");
  const q = document.getElementById("q");
  const data = await fetch("/data/directory.json").then(r=>r.json()).catch(()=>[]);
  function card(x){
    const t = document.createElement("a");
    t.className = "card";
    t.href = x.url; t.target = "_blank"; t.rel = "noopener";
    t.innerHTML = `<strong>${x.name}</strong><br>${x.type} · ${x.region}<br><small>${(x.tags||[]).join(", ")}</small>`;
    return t;
  }
  function render(list){
    root.innerHTML = "";
    list.forEach(x => root.appendChild(card(x)));
  }
  function filter(val){
    const v = (val||"").trim().toLowerCase();
    if (!v) return data;
    return data.filter(x => JSON.stringify(x).toLowerCase().includes(v));
  }
  q?.addEventListener("input", e => render(filter(e.target.value)));
  render(data);
})();