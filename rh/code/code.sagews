︠ad5c219e-2930-4a4a-988e-911196d0b32f︠
%load code.sage
draw('Psiprime')
︡1c2d8ab5-9a12-424e-9be3-b44025bbd8e6︡{"stdout":"Drawing Psiprime... "}︡{"stdout":" "}︡{"stdout":" (time = 0.2238509655 seconds)\n"}︡
︠81c1fcff-67ca-419b-8a63-77c91960d11c︠
draw('riemann_spectrum_gaps')

︡411ead0e-ec18-4c09-8a6f-905014ef79fe︡{"stdout":"Drawing riemann_spectrum_gaps... "}︡{"stdout":" "}︡{"stdout":" (time = 1.61334013939 seconds)\n"}︡
︠6732c1fc-5898-402c-91af-91abf5753047︠

︠f24e5ccf-2b08-4404-af26-7e6b180919e4︠

︠4402b7b7-4adc-4d16-bf55-1bf2faab6f21︠
def fig_Phi():
    g = line([(0,0),(0,100)], rgbcolor='black')
    xmax = 20
    ymax = 50
    for n in [1..xmax]:
        if is_prime_power(n):
            if n == 1:
                h = log(2*pi)
            else:
                h = log(factor(n)[0][0])
            h /= sqrt(n)
            h = float(h)*50
            print h
            g += arrow((log(n),0),(log(n),h), width=1)
            g += arrow((-log(n),0),(-log(n),h), width=1)
            g += line([(log(n),0),(log(n),100)], color='black', thickness=.3)
            g += line([(-log(n),0),(-log(n),100)], color='black', thickness=.3)
            if n in [2, 5, 16]:
               g += text("log(%s)"%n, (log(n),-5), rgbcolor='black', fontsize=12)
               g += line([(log(n),-2), (log(n),0)], rgbcolor='black')
               g += text("log(%s)"%n, (-log(n),-5), rgbcolor='black', fontsize=12)
               g += line([(-log(n),-2), (-log(n),0)], rgbcolor='black')
    g += line([(-log(xmax)-1,0), (log(xmax)+1,0)], thickness=2)
    return g

show(fig_Phi(), axes=False)
︡7200b48c-0e1a-498f-a6eb-29c88bfb0fe0︡{"stdout":"91.8938533205\n24.5064535867\n31.7142050299\n17.328679514\n35.9881257777\n36.7742452005\n12.2532267934\n18.3102048111\n36.1496313929\n35.5694477973\n8.664339757\n34.3577584631\n33.7750314621\n"}︡{"once":false,"file":{"show":true,"uuid":"c4cb0565-09ba-4299-8773-cc1949a17473","filename":"/projects/54949eee-57da-4bd7-bb43-c2602b429f9a/.sage/temp/compute17a/6918/tmp_PAKFXy.png"}}︡
︠8b7358b4-aa56-4e34-9696-990549016257︠

︠8c58f170-89df-4317-9035-cb453164414a︠
%load code.sage
︡7bf88709-0f16-407b-94c7-dc88b73f7429︡
︠801ad5d7-666d-4776-bda0-b8990c5e7bc3︠
draw('zero_spacing')
︡98db6677-70af-470b-a77c-ad5bf4f81e4e︡{"stdout":"Drawing zero_spacing... "}︡{"stdout":" "}︡{"stdout":" (time = 1.18501615524 seconds)\n"}︡
︠52638b79-4a50-4cf6-bb20-820bf12bc905︠
draw('Phi')
︡2e2bda74-3fee-457b-ae44-7f8cdcf03594︡{"stdout":"Drawing Phi... "}︡{"stdout":" 91.8938533205\n24.5064535867\n31.7142050299\n17.328679514\n35.9881257777\n36.7742452005\n12.2532267934\n18.3102048111\n36.1496313929\n35.5694477973\n8.664339757\n34.3577584631\n33.7750314621\n (time = 0.299562931061 seconds)"}︡{"stdout":"\n"}︡
︠ee3aeef7-63f1-42f5-b0a7-3d5fc8dbd38b︠
%time
draw("theta_C_intro")
︡5d5850f2-f326-4fd7-afe3-9d4ee3758d76︡{"stdout":"Drawing theta_C_intro... "}︡{"stdout":" "}︡{"stdout":" (time = 1.07501602173 seconds)\n"}︡{"stdout":"CPU time: 1.08 s, Wall time: 1.06 s\n"}︡
︠590cdc6a-88af-4bb2-9f7b-5a56c87f82f2︠
draw("cesaro")

︡a01846f9-6882-4c70-bc58-18a024c7c761︡{"stdout":"Drawing cesaro... "}︡{"stdout":" "}︡{"stdout":" (time = 3.174036026 seconds)\n"}︡
︠c7203c69-5e8b-43c9-8067-f81a0b9f6a72︠
def f(B):
    v = prime_gap_distribution(10^B)
    z = [v[i] if i<len(v) else 0 for i in [2,4,6,8,100,252]]
    print "$10^{%s}$ & "%B + " & ".join([str(a) for a in z]) + r"\\\hline"
︡39843a03-eb84-493f-af26-24e54dc8be47︡
︠13072bfa-218a-4b8a-a2de-ca7c41312593︠
for B in [1..8]:
    f(B)
︡f1933159-9f47-48e2-b35a-1ce0590a48df︡{"stdout":"$10^{1}$ & 2 & 0 & 0 & 0 & 0 & 0\\\\\\hline\n$10^{2}$ & 8 & 7 & 7 & 1 & 0 & 0\\\\\\hline\n$10^{3}$ & 35 & 40 & 44 & 15 & 0 & 0\\\\\\hline\n$10^{4}$ & 205 & 202 & 299 & 101 & 0 & 0\\\\\\hline\n$10^{5}$ & 1224 & 1215 & 1940 & 773 & 0 & 0\\\\\\hline\n$10^{6}$ & 8169 & 8143 & 13549 & 5569 & 2 & 0\\\\\\hline\n$10^{7}$ & 58980 & 58621 & 99987 & 42352 & 36 & 0\\\\\\hline\n$10^{8}$ & 440312 & 440257 & 768752 & 334180 & 878 & 0\\\\\\hline\n"}︡
︠9753b0b8-b7f2-4cbc-843f-6635e137f4ad︠
%time
f(500*10^6)
︡3b01e2c7-540d-408c-b9de-f60d9cf08ac4︡{"stdout":"[1840170, 1841265, 3257346, 1434059, 0]"}︡{"stdout":"\n"}︡{"stdout":"CPU time: 92.78 s, Wall time: 87.69 s\n"}︡
︠9fe9bd2a-95e4-4287-a027-c801beb0f7bf︠
%time
draw("theta_C")

︡8e53287a-8bae-44b2-80ae-adb45047b992︡{"stdout":"Drawing theta_C... "}︡{"stdout":" "}︡{"stdout":" (time = 5.19401979446 seconds)\n"}︡{"stdout":"CPU time: 5.19 s, Wall time: 5.05 s\n"}︡
︠8bdd3bcb-d391-4a9f-a7d8-f0cef539369a︠
%time
draw("random_walks")

︡5e0b0c37-a028-4fac-904f-150b616d759a︡{"stdout":"Drawing random_walks... "}︡{"stdout":" "}︡{"stdout":" (time = 67.0932559967 seconds)\n"}︡{"stdout":"CPU time: 67.09 s, Wall time: 66.59 s\n"}︡
︠56582f35-345d-47f2-a4d8-281e050eab6e︠









︠59430b3a-b0f2-46ba-93b8-8f51522a2f7b︠
p = area_under_inverse_log(30)
︡065f0a24-4733-450b-95f3-b8eefc2ff43b︡
︠8e1912f4-1e64-4891-ab8a-b5bd68b72f7b︠
show(p, aspect_ratio='automatic', svg=True)
︡fb88bfb2-5632-453e-a7c8-0661cdfea19f︡{"file":{"show":true,"uuid":"e7a64600-bcfe-4eb2-909e-fd6882a87f57","filename":"/mnt/home/4by9x1bp/.sage/temp/compute4a/3980/tmp_3UTM5b.svg"}}︡
︠54f130dc-7701-45c2-9fc1-7524b031c246︠
p.aspect_ratio()
︡db7d8a30-69b5-484f-9f9c-b782169a40ee︡{"stdout":"1.0\n"}︡
︠b5b25d78-6da4-4501-9845-7ac6347b12fb︠
a = p[0] + p[1] + sum(p[3:]); b = p[2]
︡23eaf40a-6f26-436f-8458-6dfb3054d3a0︡
︠3ac48aac-f885-44d5-a632-33b61bec0027︠
a
︡02b04ba9-4124-4cd0-8e51-7f7bf9055901︡{"file":{"show":true,"uuid":"f90ed931-cc3a-4c4a-8ff1-cc9db0547b55","filename":"/mnt/home/4by9x1bp/.sage/temp/compute4a/3980/tmp_ZAR558.png"}}︡
︠382f0d54-c2d2-4cf9-a670-9aa811e86b97︠
b.set_aspect_ratio('automatic')
︡40122f29-95f8-4fb1-84a9-6883428b7480︡
︠5e47d3fe-ec95-474f-9cdf-59e2c8159ddf︠
b.aspect_ratio()
︡3b527867-f8d4-4a57-8861-b1271e8b65cb︡{"stdout":"'automatic'\n"}︡
︠0509f817-e85f-4cc4-8434-c51ea248474b︠
a+b
︡84719e77-b367-4503-883b-a8951d10b947︡{"file":{"show":true,"uuid":"662d7f32-6dfb-478f-8f8f-c5bd16b4f6d4","filename":"/mnt/home/4by9x1bp/.sage/temp/compute4a/3980/tmp_UzkVvD.png"}}︡
︠6fc7d23b-c3c0-48f4-af28-75d01374f403︠

polygon2d.options
︡c281bdee-d353-4331-b64b-4958edf43c8a︡{"stdout":"{'aspect_ratio': 1.0, 'alpha': 1, 'fill': True, 'legend_label': None, 'rgbcolor': (0, 0, 1), 'thickness': None}\n"}︡
︠09bf4c91-d13e-474c-a6be-5ce0bfa15732︠

circle.options
︡d6cd2f8b-be3a-4887-a26e-8c57dbcb2dff︡{"stdout":"{'edgecolor': 'blue', 'facecolor': 'blue', 'clip': True, 'legend_label': None, 'thickness': 1, 'zorder': 5, 'aspect_ratio': 1.0, 'alpha': 1, 'linestyle': 'solid', 'fill': False}\n"}︡
︠0e5c9217-9a87-4ab4-9275-643e2f25192b︠









