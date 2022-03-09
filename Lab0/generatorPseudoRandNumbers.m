
function results = generatorPseudoRandNumbers(startNumber, howMany, z)
    results = zeros(1,howMany);
    currentResult = startNumber;
    
    for c = 1:1:howMany
        results(c) = currentResult;
        currentResult = generator(currentResult, z);
    end
end