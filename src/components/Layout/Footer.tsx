import GithubIcon from "/icons/github.svg";
import XIcon from "/icons/x.svg";
import Logo from "/logo.svg";

const Footer = () => {
  return (
    <footer className="flex flex-row justify-between items-center px-20 py-[24px]">
      <a href="#">
        <img src={Logo} className="h-[30px] w-[150px]" />
      </a>
      <div className="flex flex-row gap-[39px] text-[#40959D] text-[18px] font-[Rale-Medium]">
        <a href="#about">
          <h4 className="hover:opacity-90 hover:underline underline-offset-[3px] hover:cursor-pointer">About Us</h4>
        </a>
        <h4 className="hover:opacity-90 hover:underline underline-offset-[3px] hover:cursor-pointer">Team</h4>
      </div>
      <div className="flex flex-row gap-[12px]">
        <a href="https://protocol.land/#/repository/f08c7785-bd0d-43e0-b271-744f2c73553a" target="_blank">
          <img src={GithubIcon} className="h-[21px] w-[21px]" />
        </a>
        <a href="https://x.com/0xLPircy?t=_DmrN3T1GWBKqycYR6BINA&s=09" target="_blank">
          <img src={XIcon} className="h-[21px] w-[21px]" />
        </a>
      </div>
    </footer>
  );
};

export default Footer;
