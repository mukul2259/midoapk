.class Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;
.super Landroid/os/Handler;
.source "CNEServiceApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/CNEService/CNEServiceApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quicinc/cne/CNEService/CNEServiceApp;


# direct methods
.method public constructor <init>(Lcom/quicinc/cne/CNEService/CNEServiceApp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/quicinc/cne/CNEService/CNEServiceApp;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;->this$0:Lcom/quicinc/cne/CNEService/CNEServiceApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/quicinc/cne/CNEService/CNEServiceApp;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/quicinc/cne/CNEService/CNEServiceApp;
    .param p2, "L"    # Landroid/os/Looper;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;->this$0:Lcom/quicinc/cne/CNEService/CNEServiceApp;

    .line 46
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 45
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 51
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 68
    iget-object v3, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;->this$0:Lcom/quicinc/cne/CNEService/CNEServiceApp;

    invoke-static {v3}, Lcom/quicinc/cne/CNEService/CNEServiceApp;->-get1(Lcom/quicinc/cne/CNEService/CNEServiceApp;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 70
    :try_start_0
    iget-object v3, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;->this$0:Lcom/quicinc/cne/CNEService/CNEServiceApp;

    invoke-static {v3}, Lcom/quicinc/cne/CNEService/CNEServiceApp;->-get1(Lcom/quicinc/cne/CNEService/CNEServiceApp;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 53
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Messenger;

    .line 54
    .local v2, "mg":Landroid/os/Messenger;
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 55
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v3, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;->this$0:Lcom/quicinc/cne/CNEService/CNEServiceApp;

    iget-object v4, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;->this$0:Lcom/quicinc/cne/CNEService/CNEServiceApp;

    invoke-static {v4}, Lcom/quicinc/cne/CNEService/CNEServiceApp;->-get0(Lcom/quicinc/cne/CNEService/CNEServiceApp;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto :goto_0

    .line 58
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    .end local v2    # "mg":Landroid/os/Messenger;
    :sswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_0

    .line 59
    const-string/jumbo v3, "CNEServiceApp"

    const-string/jumbo v4, "qcs channel ok"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v4, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;->this$0:Lcom/quicinc/cne/CNEService/CNEServiceApp;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/util/AsyncChannel;

    invoke-static {v4, v3}, Lcom/quicinc/cne/CNEService/CNEServiceApp;->-set0(Lcom/quicinc/cne/CNEService/CNEServiceApp;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 61
    iget-object v3, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;->this$0:Lcom/quicinc/cne/CNEService/CNEServiceApp;

    invoke-static {v3}, Lcom/quicinc/cne/CNEService/CNEServiceApp;->-wrap0(Lcom/quicinc/cne/CNEService/CNEServiceApp;)V

    goto :goto_0

    .line 65
    :sswitch_2
    iget-object v3, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;->this$0:Lcom/quicinc/cne/CNEService/CNEServiceApp;

    invoke-static {v3, v4}, Lcom/quicinc/cne/CNEService/CNEServiceApp;->-set0(Lcom/quicinc/cne/CNEService/CNEServiceApp;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x2773 -> :sswitch_0
        0x11000 -> :sswitch_1
        0x11004 -> :sswitch_2
    .end sparse-switch
.end method
