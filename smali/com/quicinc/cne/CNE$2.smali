.class Lcom/quicinc/cne/CNE$2;
.super Landroid/content/BroadcastReceiver;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quicinc/cne/CNE;


# direct methods
.method constructor <init>(Lcom/quicinc/cne/CNE;)V
    .locals 0
    .param p1, "this$0"    # Lcom/quicinc/cne/CNE;

    .prologue
    .line 924
    iput-object p1, p0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 926
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 928
    .local v6, "action":Ljava/lang/String;
    const-string/jumbo v22, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 929
    const-string/jumbo v22, "CORE"

    const-string/jumbo v23, "Got ACTION_BOOT_COMPLETED"

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap16(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/quicinc/cne/CNE;->-wrap26(Lcom/quicinc/cne/CNE;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/quicinc/cne/CNE;->-get12(Lcom/quicinc/cne/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v10

    .line 936
    .local v10, "enabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v10}, Lcom/quicinc/cne/CNE;->-wrap4(Lcom/quicinc/cne/CNE;Z)Z

    .line 925
    .end local v10    # "enabled":Z
    :cond_0
    :goto_0
    return-void

    .line 938
    :cond_1
    const-string/jumbo v22, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 939
    const-string/jumbo v22, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/NetworkInfo;

    .line 940
    .local v13, "ni":Landroid/net/NetworkInfo;
    if-eqz v13, :cond_0

    .line 941
    const-string/jumbo v22, "CORE"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Got CONNECTIVITY_ACTION intent for network"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/quicinc/cne/CNE;->-get7(Lcom/quicinc/cne/CNE;)Landroid/content/Context;

    move-result-object v22

    const-string/jumbo v23, "connectivity"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    .line 944
    .local v9, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 945
    .local v7, "activeNi":Landroid/net/NetworkInfo;
    if-eqz v7, :cond_0

    .line 946
    const-string/jumbo v22, "CORE"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "activeNetwork type is"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v22

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 948
    const-string/jumbo v22, "CORE"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Got CONNECTIVITY_ACTION on default nw"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/quicinc/cne/CNE;->-wrap7(Lcom/quicinc/cne/CNE;)Z

    goto/16 :goto_0

    .line 954
    .end local v7    # "activeNi":Landroid/net/NetworkInfo;
    .end local v9    # "cm":Landroid/net/ConnectivityManager;
    .end local v13    # "ni":Landroid/net/NetworkInfo;
    :cond_2
    const-string/jumbo v22, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap29(Lcom/quicinc/cne/CNE;Z)V

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-set7(Lcom/quicinc/cne/CNE;Z)Z

    goto/16 :goto_0

    .line 958
    :cond_3
    const-string/jumbo v22, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap29(Lcom/quicinc/cne/CNE;Z)V

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-set7(Lcom/quicinc/cne/CNE;Z)Z

    goto/16 :goto_0

    .line 962
    :cond_4
    const-string/jumbo v22, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap30(Lcom/quicinc/cne/CNE;Z)V

    goto/16 :goto_0

    .line 965
    :cond_5
    const-string/jumbo v22, "android.net.wifi.RSSI_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 966
    const-string/jumbo v22, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 965
    if-eqz v22, :cond_8

    .line 967
    :cond_6
    const-string/jumbo v22, "CORE"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "CNE received action RSSI/Link Changed events: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/quicinc/cne/CNE;->-get13(Lcom/quicinc/cne/CNE;)Landroid/net/wifi/WifiManager;

    move-result-object v22

    if-eqz v22, :cond_7

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/quicinc/cne/CNE;->-get0(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->-wrap0(Lcom/quicinc/cne/CNE$CneWifiInfo;Landroid/content/Intent;)V

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/quicinc/cne/CNE;->-wrap33(Lcom/quicinc/cne/CNE;)V

    goto/16 :goto_0

    .line 974
    :cond_7
    const-string/jumbo v22, "CORE"

    const-string/jumbo v23, "CNE received action RSSI/Link Changed events, null WifiManager"

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap22(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 977
    :cond_8
    const-string/jumbo v22, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_9

    .line 978
    const-string/jumbo v22, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 977
    if-nez v22, :cond_9

    .line 979
    const-string/jumbo v22, "wifi_disconnect_in_progress"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 977
    if-eqz v22, :cond_b

    .line 980
    :cond_9
    const-string/jumbo v22, "CORE"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "CNE received action: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/quicinc/cne/CNE;->-get13(Lcom/quicinc/cne/CNE;)Landroid/net/wifi/WifiManager;

    move-result-object v22

    if-eqz v22, :cond_a

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/quicinc/cne/CNE;->-get0(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->-wrap0(Lcom/quicinc/cne/CNE$CneWifiInfo;Landroid/content/Intent;)V

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/quicinc/cne/CNE;->-wrap33(Lcom/quicinc/cne/CNE;)V

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/quicinc/cne/CNE;->-get0(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->networkState:I

    move/from16 v23, v0

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/quicinc/cne/CNE;->-get0(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ipAddrV4:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/quicinc/cne/CNE;->-get0(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ipAddrV6:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 985
    const/16 v26, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v26

    move/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/quicinc/cne/CNE;->notifyRatConnectStatus(IILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 991
    :cond_a
    const-string/jumbo v22, "CORE"

    const-string/jumbo v23, "CNE received action Network State Changed, null WifiManager"

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap22(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 993
    :cond_b
    const-string/jumbo v22, "android.intent.action.ANY_DATA_STATE"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 994
    const-string/jumbo v22, "apnType"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 995
    .local v8, "apnType":Ljava/lang/String;
    if-nez v8, :cond_c

    .line 996
    const-string/jumbo v22, "CORE"

    const-string/jumbo v23, "CNE error getting apnType"

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap21(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    return-void

    .line 999
    :cond_c
    const-string/jumbo v22, "default"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/quicinc/cne/CNE;->-get1(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWwanInfo;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE$CneWwanInfo;->-wrap0(Lcom/quicinc/cne/CNE$CneWwanInfo;Landroid/content/Intent;)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/quicinc/cne/CNE;->-wrap34(Lcom/quicinc/cne/CNE;)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/quicinc/cne/CNE;->-get1(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWwanInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/quicinc/cne/CNE$CneWwanInfo;->networkState:I

    move/from16 v23, v0

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/quicinc/cne/CNE;->-get1(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWwanInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CneWwanInfo;->ipAddrV4:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/quicinc/cne/CNE;->-get1(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWwanInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CneWwanInfo;->ipAddrV6:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1003
    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v26

    move/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/quicinc/cne/CNE;->notifyRatConnectStatus(IILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1007
    .end local v8    # "apnType":Ljava/lang/String;
    :cond_d
    const-string/jumbo v22, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 1008
    const-string/jumbo v22, "CORE"

    const-string/jumbo v23, "CNE received WIFI_AP_STATE_CHANGED_ACTION"

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const-string/jumbo v22, "wifi_state"

    const/16 v23, 0xb

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 1010
    .local v20, "wifiApState":I
    const-string/jumbo v22, "previous_wifi_state"

    const/16 v23, 0xb

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 1011
    .local v14, "prevApState":I
    move/from16 v0, v20

    if-eq v0, v14, :cond_0

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-static {v0, v1, v14}, Lcom/quicinc/cne/CNE;->-wrap31(Lcom/quicinc/cne/CNE;II)V

    goto/16 :goto_0

    .line 1014
    .end local v14    # "prevApState":I
    .end local v20    # "wifiApState":I
    :cond_e
    const-string/jumbo v22, "android.net.wifi.p2p.STATE_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 1015
    const-string/jumbo v22, "CORE"

    const-string/jumbo v23, "CNE received WIFI_P2P_STATE_CHANGED_ACTION"

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    const-string/jumbo v22, "android.net.wifi.p2p.STATE_CHANGED"

    const/16 v23, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 1017
    .local v21, "wifip2pstate":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->-wrap32(Lcom/quicinc/cne/CNE;I)V

    goto/16 :goto_0

    .line 1018
    .end local v21    # "wifip2pstate":I
    :cond_f
    const-string/jumbo v22, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 1019
    const-string/jumbo v22, "CORE"

    const-string/jumbo v23, "Default Data Subscription changed"

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/quicinc/cne/CNE;->-get12(Lcom/quicinc/cne/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v10

    .line 1021
    .restart local v10    # "enabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v10}, Lcom/quicinc/cne/CNE;->-wrap4(Lcom/quicinc/cne/CNE;Z)Z

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/quicinc/cne/CNE;->-wrap23(Lcom/quicinc/cne/CNE;)V

    goto/16 :goto_0

    .line 1023
    .end local v10    # "enabled":Z
    :cond_10
    const-string/jumbo v22, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 1024
    const-string/jumbo v22, "CORE"

    const-string/jumbo v23, "CNE received action ACTION_SIM_STATE_CHANGED"

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    const-string/jumbo v22, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1026
    .local v18, "state":Ljava/lang/String;
    const-string/jumbo v22, "READY"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_12

    .line 1027
    const-string/jumbo v22, "IMSI"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 1026
    if-nez v22, :cond_12

    .line 1028
    const-string/jumbo v22, "LOADED"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 1029
    :goto_1
    const-string/jumbo v22, "subscription"

    .line 1030
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v23

    .line 1029
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 1031
    .local v19, "subId":I
    const-string/jumbo v22, "slot"

    .line 1032
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v23

    invoke-static/range {v23 .. v23}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v23

    .line 1031
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 1034
    .local v16, "slotId":I
    const-string/jumbo v22, "CORE"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "sim state = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " subId = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " slotId = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    if-nez v12, :cond_11

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->-wrap3(Lcom/quicinc/cne/CNE;I)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 1039
    const-string/jumbo v22, "CORE"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Sim is removed, set isSubInfoReady["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "] to false"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/quicinc/cne/CNE;->-get5(Lcom/quicinc/cne/CNE;)[Z

    move-result-object v22

    const/16 v23, 0x0

    aput-boolean v23, v22, v16

    .line 1051
    :cond_11
    :goto_2
    const-string/jumbo v22, "CORE"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, " sim state = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " subId = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v22

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    if-nez v12, :cond_0

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap4(Lcom/quicinc/cne/CNE;Z)Z

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/quicinc/cne/CNE;->-wrap23(Lcom/quicinc/cne/CNE;)V

    goto/16 :goto_0

    .line 1026
    .end local v16    # "slotId":I
    .end local v19    # "subId":I
    :cond_12
    const/4 v12, 0x1

    .local v12, "isSimInserted":Z
    goto/16 :goto_1

    .line 1042
    .end local v12    # "isSimInserted":Z
    .restart local v16    # "slotId":I
    .restart local v19    # "subId":I
    :cond_13
    const-string/jumbo v22, "CORE"

    const-string/jumbo v23, "Invalid slotid, not changing isSubInfoReady"

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1057
    .end local v16    # "slotId":I
    .end local v18    # "state":Ljava/lang/String;
    .end local v19    # "subId":I
    :cond_14
    const-string/jumbo v22, "org.codeaurora.intent.action.ACTION_NETWORK_SPECIFIER_SET"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 1058
    const-string/jumbo v22, "CORE"

    const-string/jumbo v23, "CNE received ACTION_NETWORK_SPECIFIER_SET"

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    const-string/jumbo v23, "SubIdList"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/quicinc/cne/CNE;->mSubIds:Ljava/util/ArrayList;

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/quicinc/cne/CNE;->mSubIds:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 1061
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/quicinc/cne/CNE;->mSubIds:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_0

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/quicinc/cne/CNE;->-get11(Lcom/quicinc/cne/CNE;)Landroid/telephony/SubscriptionManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/quicinc/cne/CNE;->mSubIds:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-static/range {v22 .. v22}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v17

    .line 1063
    .local v17, "slotidx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->-wrap3(Lcom/quicinc/cne/CNE;I)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/quicinc/cne/CNE;->-get5(Lcom/quicinc/cne/CNE;)[Z

    move-result-object v22

    const/16 v23, 0x1

    aput-boolean v23, v22, v17

    .line 1065
    const-string/jumbo v22, "CORE"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Setting isSubInfoReady["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "]  to true"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1067
    :cond_15
    const-string/jumbo v22, "CORE"

    const-string/jumbo v23, "Invalid slotid while acting upon specifier set intent"

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1075
    .end local v11    # "i":I
    .end local v17    # "slotidx":I
    :cond_16
    const-string/jumbo v22, "com.quicinc.cne.TEST_SEND_RAT_INFO"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_17

    .line 1076
    const-string/jumbo v22, "CORE"

    const-string/jumbo v23, "Trigger send rat info test"

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap28(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    new-instance v15, Lcom/quicinc/cne/CNE$CneRatInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Lcom/quicinc/cne/CNE$CneRatInfo;-><init>(Lcom/quicinc/cne/CNE;)V

    .line 1078
    .local v15, "r":Lcom/quicinc/cne/CNE$CneRatInfo;
    const-wide v22, 0x6400facadeL

    move-wide/from16 v0, v22

    invoke-virtual {v15, v0, v1}, Lcom/quicinc/cne/CNE$CneRatInfo;->setNetHandle(J)V

    .line 1079
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/quicinc/cne/CNE$CneRatInfo;->setNetworkState(I)V

    .line 1080
    const-string/jumbo v22, "rmnet_data0"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/quicinc/cne/CNE$CneRatInfo;->setIPv4Iface(Ljava/lang/String;)V

    .line 1081
    const-string/jumbo v22, "100.101.102.103"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/quicinc/cne/CNE$CneRatInfo;->setIPv4Address(Ljava/lang/String;)V

    .line 1082
    const-string/jumbo v22, "2001:0db8:85a3:0000:0000:8a2e:0370:7334"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/quicinc/cne/CNE$CneRatInfo;->setIPv6Address(Ljava/lang/String;)V

    .line 1083
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/quicinc/cne/CNE$CneRatInfo;->setSlotIdx(I)V

    .line 1084
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/quicinc/cne/CNE$CneRatInfo;->setErrorCause(I)V

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$2;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Lcom/quicinc/cne/CNE;->sendRatInfo(Lcom/quicinc/cne/CNE$CneRatInfo;I)V

    goto/16 :goto_0

    .line 1104
    .end local v15    # "r":Lcom/quicinc/cne/CNE$CneRatInfo;
    :cond_17
    const-string/jumbo v22, "CORE"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "CNE received unexpected action: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/quicinc/cne/CNE;->-wrap22(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
