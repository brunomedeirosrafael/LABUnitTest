#import "Specta.h"
#import "CalculatorBusiness.h"
#define EXP_SHORTHAND
#import "Expecta.h"


SpecBegin(CalculatorBusiness)
describe(@"Testes da Calculator Business", ^{
    
    __block CalculatorBusiness *calculator;
    
    beforeAll(^{
    });
    
    beforeEach(^{
        calculator = [[CalculatorBusiness alloc] init];
    });
    
    describe(@"Somatorio", ^{
        it(@"Acerto", ^{
            expect([calculator sumNumber1:2 andNumber2:3]).to.equal(5);
        });
        
        it(@"Erro", ^{
            expect([calculator sumNumber1:2 andNumber2:3]).notTo.equal(6);
        });
        
        it(@"Numero não inteiro", ^{
            expect([calculator sumNumber1:2.4 andNumber2:3]).to.equal(5);
        });
    });
    
    
    describe(@"Subitração", ^{
        it(@"Acerto", ^{
            expect([calculator subtractionNumber1:2 andNumber2:3]).to.equal(-1);
        });
        
        it(@"Erro", ^{
            expect([calculator subtractionNumber1:3 andNumber2:1]).notTo.equal(1);
        });
        
        it(@"Numero não inteiro", ^{
            expect([calculator subtractionNumber1:3 andNumber2:2.4]).to.equal(1);
        });
    });
    
    afterEach(^{
    });
    
    afterAll(^{
    });
});
SpecEnd
