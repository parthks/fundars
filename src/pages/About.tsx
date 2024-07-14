import TeamCard from "../components/TeamCard";

import lilith from "/team/lilith.png";
import manishi from "/team/manishi.png";
import parth from "/team/parth.png";

export default function About() {
  return (
    <main
      className={`
      flex flex-col items-center md:justify-center justify-between text-[#f1f1f1]`}
    >
      <h1
        className="uppercase tracking-wider font-medium leading-[51px]
      xl:text-[45px] text-[36px] text-[#4FD2DE]"
      >
        Team
      </h1>
      <h3
        className="capitalize pb-6 tracking-wide text-center md:font-normal font-medium
      xl:text-[30px] md:text-[21px] text-[21px]"
      >
        Meet the amazing team behind <span className={`font-[Regular] tracking-wide text-[#4FD2DE]`}>FundARs</span>
      </h3>

      <div
        className=" 
      xl:gap-6 
      lg:gap-[12px] lg:flex lg:flex-row
      hidden
      items-center justify-center"
      >
        <TeamCard img={manishi} pname="manishi" dribble="https://dribbble.com/0xManishi" twitter="https://x.com/0xManishi" info="Designer" last={false} />
        <TeamCard img={lilith} pname="lilith" github="https://github.com/0xLPircy" twitter="https://x.com/0xLPircy" info="Developer" last={false} />
        <TeamCard img={parth} pname="parth" github="https://github.com/parthks" twitter="https://x.com/1human_in/" info="Smart Contract Developer" last={false} />
      </div>
    </main>
  );
}
