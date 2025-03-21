import "./index.css";
import { Hero, ProjectsDisplay } from "./components";
import Arch from "./components/Landing/Arch";

// TODO: Move all images to arweave and update to static links - dragon deploy not working

function App() {
  return (
    <main className="w-[100vw] flex flex-col gap-24 font-[Rale-Regular]">
      <Hero />
      <Arch />
      <ProjectsDisplay />

      {/* <img className={"fixed top-0 -z-10"} src={shading} alt="shading" /> */}
      {/* <Unstake /> */}
      {/* <Stake /> */}
    </main>
  );
}

export default App;
