import * as idMapping from "../fixtures/id-mapping.json"
import * as xpathMapping from "../fixtures/xpath-mapping.json"
export class UtilsPO {
    public idData: Record<string, string> = idMapping;
    public xPathData: Record<string, string> = xpathMapping;
    
    getXpathValue(key: string): string {
        return this.xPathData[key]
    }

    getIdValue(key: string): string {
        return this.idData[key]
    }
}