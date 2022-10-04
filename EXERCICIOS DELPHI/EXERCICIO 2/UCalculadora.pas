unit UCalculadora;

interface
type
  Tcalculadora = class
    private
    public
      function RetornaSoma(aNum1, aNum2: Integer): Integer;
  end;

implementation

{ Tcalculadora }

function Tcalculadora.RetornaSoma(aNum1, aNum2: Integer): Integer;
begin
  Result:= aNum1 + aNum2;
end;

end.
