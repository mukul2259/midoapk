.class Lcom/quicinc/cne/CNE$4;
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
    .line 1898
    iput-object p1, p0, Lcom/quicinc/cne/CNE$4;->this$0:Lcom/quicinc/cne/CNE;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 1901
    const-string/jumbo v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "network available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    iget-object v0, p0, Lcom/quicinc/cne/CNE$4;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0, p1}, Lcom/quicinc/cne/CNE;->-set6(Lcom/quicinc/cne/CNE;Landroid/net/Network;)Landroid/net/Network;

    .line 1903
    iget-object v0, p0, Lcom/quicinc/cne/CNE$4;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->-get1(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWwanInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/quicinc/cne/CNE$CneWwanInfo;->setNetHandle(J)V

    .line 1904
    iget-object v0, p0, Lcom/quicinc/cne/CNE$4;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->-wrap34(Lcom/quicinc/cne/CNE;)V

    .line 1900
    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "maxMsToLive"    # I

    .prologue
    .line 1917
    const-string/jumbo v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "network losing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->-wrap28(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    iget-object v0, p0, Lcom/quicinc/cne/CNE$4;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->-wrap35(Lcom/quicinc/cne/CNE;)V

    .line 1916
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 1909
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

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    iget-object v0, p0, Lcom/quicinc/cne/CNE$4;->this$0:Lcom/quicinc/cne/CNE;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->-set6(Lcom/quicinc/cne/CNE;Landroid/net/Network;)Landroid/net/Network;

    .line 1911
    iget-object v0, p0, Lcom/quicinc/cne/CNE$4;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->-get1(Lcom/quicinc/cne/CNE;)Lcom/quicinc/cne/CNE$CneWwanInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/quicinc/cne/CNE$CneWwanInfo;->setNetHandle(J)V

    .line 1912
    iget-object v0, p0, Lcom/quicinc/cne/CNE$4;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v0}, Lcom/quicinc/cne/CNE;->-wrap34(Lcom/quicinc/cne/CNE;)V

    .line 1908
    return-void
.end method
