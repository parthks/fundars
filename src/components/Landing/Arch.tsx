import archBg from "/arch/archBg.svg";
import archPointer from "/arch/archPointer.svg";
import archArrowDown from "/arch/archArrowDown.svg";
import archPointerLeft from "/arch/archPointerLeft.svg";

const Arch = () => {
  return (
    <section className="w-[100vw] text-[#eeeeee] flex flex-col justify-center items-center fadeInScroll">
      <img src={archBg} className="w-full" />
      <img src={archPointer} className={`w-[21px] h-[21px] absolute opacity-1 z-10 ltr`} />
      <img src={archArrowDown} className={`w-[21px] h-[21px] absolute opacity-1 z-10 ttb `} />
      <img src={archPointerLeft} className={`w-[21px] h-[21px] absolute opacity-1 z-10 rtl `} />
      {/* <img
        src="/arch/archArrow.svg"
        className={`w-[21px] h-[21px] absolute opacity-1 z-10 arr1 `}
      /> */}
    </section>
  );
};

export default Arch;
