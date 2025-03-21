const Arch = () => {
  return (
    <section className="w-[100vw] text-[#eeeeee] flex flex-col justify-center items-center fadeInScroll">
      <img src={"https://ykxdc44ycigwbzizbvfquofna2yx2tkn3e6fx5zjltzbjfpbeqcq.arweave.net/wq4xc5gSDWDlGQ1LCjitBrF9TU3ZPFv3KVzyFJXhJAU/arch/archBg.svg"} className="w-full" />
      <img
        src={"https://ykxdc44ycigwbzizbvfquofna2yx2tkn3e6fx5zjltzbjfpbeqcq.arweave.net/wq4xc5gSDWDlGQ1LCjitBrF9TU3ZPFv3KVzyFJXhJAU/arch/archPointer.svg"}
        className={`w-[21px] h-[21px] absolute opacity-1 z-10 ltr`}
      />
      <img
        src={"https://ykxdc44ycigwbzizbvfquofna2yx2tkn3e6fx5zjltzbjfpbeqcq.arweave.net/wq4xc5gSDWDlGQ1LCjitBrF9TU3ZPFv3KVzyFJXhJAU/arch/archArrowDown.svg"}
        className={`w-[21px] h-[21px] absolute opacity-1 z-10 ttb `}
      />
      <img
        src={"https://ykxdc44ycigwbzizbvfquofna2yx2tkn3e6fx5zjltzbjfpbeqcq.arweave.net/wq4xc5gSDWDlGQ1LCjitBrF9TU3ZPFv3KVzyFJXhJAU/arch/archPointerLeft.svg"}
        className={`w-[21px] h-[21px] absolute opacity-1 z-10 rtl `}
      />
      {/* <img
        src="https://ykxdc44ycigwbzizbvfquofna2yx2tkn3e6fx5zjltzbjfpbeqcq.arweave.net/wq4xc5gSDWDlGQ1LCjitBrF9TU3ZPFv3KVzyFJXhJAU/arch/archArrow.svg"
        className={`w-[21px] h-[21px] absolute opacity-1 z-10 arr1 `}
      /> */}
    </section>
  );
};

export default Arch;
