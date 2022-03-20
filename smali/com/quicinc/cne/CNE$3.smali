.class Lcom/quicinc/cne/CNE$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
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
    .line 1802
    iput-object p1, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 9
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    const/4 v8, 0x1

    .line 1805
    const-string/jumbo v4, "CORE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "network available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->-wrap22(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    iget-object v4, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4, p1}, Lcom/quicinc/cne/CNE;->-set8(Lcom/quicinc/cne/CNE;Landroid/net/Network;)Landroid/net/Network;

    .line 1807
    invoke-static {p1}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    move-result v0

    .line 1808
    .local v0, "flag":Z
    if-eqz v0, :cond_0

    .line 1809
    const-string/jumbo v4, "CORE"

    const-string/jumbo v5, "onAvailable: bind the process to WIFI"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->-wrap22(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    :cond_0
    iget-object v4, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4}, Lcom/quicinc/cne/CNE;->-get2(Lcom/quicinc/cne/CNE;)Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v2

    .line 1812
    .local v2, "lp":Landroid/net/LinkProperties;
    if-nez v2, :cond_1

    .line 1813
    const-string/jumbo v4, "CORE"

    const-string/jumbo v5, "Lp is null"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->-wrap22(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    iget-object v4, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4}, Lcom/quicinc/cne/CNE;->-get9(Lcom/quicinc/cne/CNE;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1815
    :try_start_0
    iget-object v4, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v6, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/quicinc/cne/CNE;->-set1(Lcom/quicinc/cne/CNE;Z)Z

    move-result v6

    invoke-static {v4, v6}, Lcom/quicinc/cne/CNE;->-set0(Lcom/quicinc/cne/CNE;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 1817
    return-void

    .line 1814
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1819
    :cond_1
    iget-object v4, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4, v2}, Lcom/quicinc/cne/CNE;->-wrap15(Lcom/quicinc/cne/CNE;Landroid/net/LinkProperties;)V

    .line 1820
    iget-object v4, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4, v8}, Lcom/quicinc/cne/CNE;->-set4(Lcom/quicinc/cne/CNE;Z)Z

    .line 1821
    iget-object v4, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4}, Lcom/quicinc/cne/CNE;->-get2(Lcom/quicinc/cne/CNE;)Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 1822
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    const/4 v1, 0x0

    .line 1823
    .local v1, "isValidated":Z
    if-eqz v3, :cond_2

    .line 1824
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    .line 1826
    .end local v1    # "isValidated":Z
    :cond_2
    iget-object v4, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v5, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v5}, Lcom/quicinc/cne/CNE;->-get6(Lcom/quicinc/cne/CNE;)Z

    move-result v5

    iget-object v6, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v6}, Lcom/quicinc/cne/CNE;->-wrap11(Lcom/quicinc/cne/CNE;)I

    move-result v6

    invoke-virtual {v4, v5, v6, v1}, Lcom/quicinc/cne/CNE;->notifyWlanConnectivityUp(ZIZ)Z

    .line 1827
    iget-object v4, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4, v2}, Lcom/quicinc/cne/CNE;->-wrap36(Lcom/quicinc/cne/CNE;Landroid/net/LinkProperties;)V

    .line 1828
    iget-object v4, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4}, Lcom/quicinc/cne/CNE;->-get0(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/quicinc/cne/CNE$CneWifiInfo;->-wrap1(Lcom/quicinc/cne/CNE$CneWifiInfo;Landroid/net/LinkProperties;)V

    .line 1829
    iget-object v4, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4}, Lcom/quicinc/cne/CNE;->-get0(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/quicinc/cne/CNE$CneWifiInfo;->setNetHandle(J)V

    .line 1830
    iget-object v4, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4}, Lcom/quicinc/cne/CNE;->-get0(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->setAndroidValidated(Z)V

    .line 1831
    iget-object v4, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4}, Lcom/quicinc/cne/CNE;->-wrap33(Lcom/quicinc/cne/CNE;)V

    .line 1833
    iget-object v4, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4}, Lcom/quicinc/cne/CNE;->-get14(Lcom/quicinc/cne/CNE;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1835
    const-string/jumbo v4, "CORE"

    const-string/jumbo v5, "Broadcast wqe state change: 1"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    iget-object v4, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4, v8}, Lcom/quicinc/cne/CNE;->-wrap14(Lcom/quicinc/cne/CNE;I)V

    .line 1837
    iget-object v4, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4}, Lcom/quicinc/cne/CNE;->-get9(Lcom/quicinc/cne/CNE;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1838
    :try_start_1
    iget-object v4, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/quicinc/cne/CNE;->-set9(Lcom/quicinc/cne/CNE;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v5

    .line 1804
    :cond_3
    return-void

    .line 1837
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .prologue
    const/16 v1, 0x10

    .line 1886
    iget-object v0, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->-get0(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getAndroidValidated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1887
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    .line 1886
    if-eqz v0, :cond_1

    .line 1888
    iget-object v0, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->-get0(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->setAndroidValidated(Z)V

    .line 1889
    iget-object v0, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->-wrap33(Lcom/quicinc/cne/CNE;)V

    .line 1885
    :cond_0
    :goto_0
    return-void

    .line 1890
    :cond_1
    iget-object v0, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->-get0(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getAndroidValidated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1891
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1892
    iget-object v0, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->-get0(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->setAndroidValidated(Z)V

    .line 1893
    iget-object v0, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->-wrap33(Lcom/quicinc/cne/CNE;)V

    goto :goto_0
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 6
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 1861
    if-nez p2, :cond_0

    .line 1862
    const-string/jumbo v2, "CORE"

    const-string/jumbo v3, "Lp is null"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->-wrap22(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    iget-object v2, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v2}, Lcom/quicinc/cne/CNE;->-get9(Lcom/quicinc/cne/CNE;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1864
    :try_start_0
    iget-object v2, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v4, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->-set1(Lcom/quicinc/cne/CNE;Z)Z

    move-result v4

    invoke-static {v2, v4}, Lcom/quicinc/cne/CNE;->-set0(Lcom/quicinc/cne/CNE;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 1866
    return-void

    .line 1863
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1868
    :cond_0
    iget-object v2, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v2, p2}, Lcom/quicinc/cne/CNE;->-wrap15(Lcom/quicinc/cne/CNE;Landroid/net/LinkProperties;)V

    .line 1869
    const/4 v0, 0x0

    .line 1870
    .local v0, "isValidated":Z
    iget-object v2, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v2}, Lcom/quicinc/cne/CNE;->-get2(Lcom/quicinc/cne/CNE;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 1871
    .local v1, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v1, :cond_1

    .line 1872
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    .line 1874
    .end local v0    # "isValidated":Z
    :cond_1
    iget-object v2, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v2}, Lcom/quicinc/cne/CNE;->-get3(Lcom/quicinc/cne/CNE;)Landroid/net/LinkProperties;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v2, p2}, Lcom/quicinc/cne/CNE;->-wrap0(Lcom/quicinc/cne/CNE;Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1860
    :goto_0
    return-void

    .line 1875
    :cond_2
    iget-object v2, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v3, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v3}, Lcom/quicinc/cne/CNE;->-get6(Lcom/quicinc/cne/CNE;)Z

    move-result v3

    iget-object v4, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4}, Lcom/quicinc/cne/CNE;->-wrap11(Lcom/quicinc/cne/CNE;)I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/quicinc/cne/CNE;->notifyWlanConnectivityUp(ZIZ)Z

    .line 1877
    iget-object v2, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v2, p2}, Lcom/quicinc/cne/CNE;->-wrap36(Lcom/quicinc/cne/CNE;Landroid/net/LinkProperties;)V

    .line 1878
    iget-object v2, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v2}, Lcom/quicinc/cne/CNE;->-get0(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/quicinc/cne/CNE$CneWifiInfo;->-wrap1(Lcom/quicinc/cne/CNE$CneWifiInfo;Landroid/net/LinkProperties;)V

    .line 1879
    iget-object v2, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v2}, Lcom/quicinc/cne/CNE;->-wrap33(Lcom/quicinc/cne/CNE;)V

    goto :goto_0
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    const/4 v4, 0x0

    .line 1845
    const-string/jumbo v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "network lost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->-wrap22(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    .line 1847
    const-string/jumbo v0, "CORE"

    const-string/jumbo v1, "onLost: unbind the process to WIFI"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->-wrap22(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    iget-object v0, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->-get9(Lcom/quicinc/cne/CNE;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1849
    :try_start_0
    iget-object v0, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v2, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->-set1(Lcom/quicinc/cne/CNE;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/quicinc/cne/CNE;->-set0(Lcom/quicinc/cne/CNE;Z)Z

    .line 1850
    iget-object v0, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/quicinc/cne/CNE;->-set5(Lcom/quicinc/cne/CNE;I)I

    .line 1851
    iget-object v0, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/quicinc/cne/CNE;->-set4(Lcom/quicinc/cne/CNE;Z)Z

    .line 1852
    iget-object v0, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/quicinc/cne/CNE;->-set9(Lcom/quicinc/cne/CNE;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1854
    iget-object v0, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->-get0(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/quicinc/cne/CNE$CneWifiInfo;->setNetHandle(J)V

    .line 1855
    iget-object v0, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->-get0(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWifiInfo;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/quicinc/cne/CNE$CneWifiInfo;->setAndroidValidated(Z)V

    .line 1856
    iget-object v0, p0, Lcom/quicinc/cne/CNE$3;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->-wrap33(Lcom/quicinc/cne/CNE;)V

    .line 1844
    return-void

    .line 1848
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
