package Logic;
sub new
{
	my $object={};
	my $class=shift;
	bless $object , $class;
	if(@_ == 0)
	{
		die "Error .";
	}
	else
	{
		$tmp1=shift;
		if(@_ == 0)
		{
			$object->{'PropositionalFormula'}=$tmp1;
		}
		else
		{
			$tmp2=shift;
			if(@_ == 0)
			{
				$object->{'Operator'}=$tmp1;
				$object->{'PropositionalFormula'}=$tmp2;
			}
			else
			{
				$tmp3=shift;
				if(@_ == 0)
				{
					$object->{'PropositionalFormula1'}=$tmp1;
                                        $object->{'Operator'}=$tmp2;
                                        $object->{'PropositionalFormula2'}=$tmp3;
				}
				else
				{
					die "Error";
				}
			}
		}
	}
	$object->{'Msg'}="Hello";
	return $object;
}
1;
