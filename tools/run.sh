#!/bin/bash

IFS=$'\n'

for line in `cat file`
do
name=$(echo $line | awk -F '\t' '{print $1}')
text=$(echo $line | awk -F '\t' '{print $2}')

echo "<p><em>${text}</em></p>
<table><thead>
<tr>
<th style=\"text-align: center\">GT</th>
<th style=\"text-align: center\">Xiaoice2</th>
<th style=\"text-align: center\">Xiaoice1(world)</th>
<th style=\"text-align: center\">Xiaoice1(mel)</th>
<th style=\"text-align: center\">+ConvFFT</th>
<th style=\"text-align: center\">++SD</th>
</tr></thead><tbody>
<tr>
<td style=\"text-align: center\"><audio controls=\"controls\" ><source src=\"../audio/xiaoice2/model_wave/${name}.wav\" autoplay/>Your browser does not support the audio element.</audio></td>
<td style=\"text-align: center\"><audio controls=\"controls\" ><source src=\"../audio/xiaoice2/model_gl_now/${name}_gen.wav\" autoplay/>Your browser does not support the audio element.</audio></td>
<td style=\"text-align: center\"><audio controls=\"controls\" ><source src=\"../audio/xiaoice2/model_2.1_our_gan/${name}_1009_f11_m_oriMgc.wav\" autoplay/>Your browser does not support the audio element.</audio></td>
<td style=\"text-align: center\"><audio controls=\"controls\" ><source src=\"../audio/xiaoice2/model_raw/${name}_gen.wav\" autoplay/>Your browser does not support the audio element.</audio></td>
<td style=\"text-align: center\"><audio controls=\"controls\" ><source src=\"../audio/xiaoice2/model_gl/${name}_gen.wav\" autoplay/>Your browser does not support the audio element.</audio></td>
<td style=\"text-align: center\"><audio controls=\"controls\" ><source src=\"../audio/xiaoice2/model_gl_s/${name}_gen.wav\" autoplay/>Your browser does not support the audio element.</audio></td>
</tr>
</tbody></table>"
done
