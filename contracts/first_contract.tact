import "@stdlib/deploy";

contract FirstContract with Deployable {

        counter: Int as uint32; // 2**32 == 4294967296
        init(){ 
            self.counter = 0;
        }
        receive("increment"){
            self.counter = self.counter +1;
        }
        get fun counter(): Int{
            return self.counter;
        }
        
    }

