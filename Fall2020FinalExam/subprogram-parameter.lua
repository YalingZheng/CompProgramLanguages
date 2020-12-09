function main()
  function simplePrint()
    print(curPrivilege);
  end
  function DefaultPrint()
    curPrivilege = "read-write";
    complicatedPrint(simplePrint);
  end
  function complicatedPrint(printmethod)
    curPrivilege = "read-write-execute";
    printmethod();
  end
  curPrivilege = "read";
  DefaultPrint();
end

main();
