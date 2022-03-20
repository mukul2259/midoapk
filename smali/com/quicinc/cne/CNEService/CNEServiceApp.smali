.class public Lcom/quicinc/cne/CNEService/CNEServiceApp;
.super Landroid/app/Application;
.source "CNEServiceApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_CNE_STARTED:Ljava/lang/String; = "action.cne.started"

.field private static final EVENT_HALF_CHANNEL_SETUP:I = 0x2773

.field private static final EXTRA_MESSENGER:Ljava/lang/String; = "messenger"

.field private static final TAG:Ljava/lang/String; = "CNEServiceApp"


# instance fields
.field private mCneInstance:Lcom/quicinc/cne/CNE;

.field private mHandler:Landroid/os/Handler;

.field private mQcsChannel:Lcom/android/internal/util/AsyncChannel;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0(Lcom/quicinc/cne/CNEService/CNEServiceApp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/quicinc/cne/CNEService/CNEServiceApp;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mQcsChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic -set0(Lcom/quicinc/cne/CNEService/CNEServiceApp;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    iput-object p1, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mQcsChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/quicinc/cne/CNEService/CNEServiceApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/quicinc/cne/CNEService/CNEServiceApp;->testAsyncChannel()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mCneInstance:Lcom/quicinc/cne/CNE;

    .line 86
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "cneservice_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mThread:Landroid/os/HandlerThread;

    .line 87
    iget-object v0, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 88
    new-instance v0, Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;

    iget-object v1, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/quicinc/cne/CNEService/CNEServiceApp$MyHandler;-><init>(Lcom/quicinc/cne/CNEService/CNEServiceApp;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mHandler:Landroid/os/Handler;

    .line 85
    return-void
.end method

.method private broadcastCNEStarted()V
    .locals 4

    .prologue
    .line 99
    const-string/jumbo v1, "CNEServiceApp"

    const-string/jumbo v2, "broadcast cne started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action.cne.started"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "messenger"

    new-instance v2, Landroid/os/Messenger;

    iget-object v3, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Lcom/quicinc/cne/CNEService/CNEServiceApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method private needStartCne()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    const-string/jumbo v1, "persist.cne.feature"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 108
    .local v0, "val":I
    if-nez v0, :cond_0

    .line 109
    return v2

    .line 111
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private startCne()V
    .locals 3

    .prologue
    .line 115
    const-string/jumbo v1, "CNEServiceApp"

    const-string/jumbo v2, "start cne"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v1, Lcom/quicinc/cne/CNE;

    iget-object v2, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/quicinc/cne/CNE;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mCneInstance:Lcom/quicinc/cne/CNE;

    .line 118
    :try_start_0
    const-string/jumbo v1, "cneservice"

    iget-object v2, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mCneInstance:Lcom/quicinc/cne/CNE;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    invoke-direct {p0}, Lcom/quicinc/cne/CNEService/CNEServiceApp;->broadcastCNEStarted()V

    .line 114
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    return-void
.end method

.method private testAsyncChannel()V
    .locals 3

    .prologue
    .line 80
    iget-object v1, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mHandler:Landroid/os/Handler;

    const v2, 0x1869f

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 81
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/quicinc/cne/CNEService/CNEServiceApp;->mQcsChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 82
    const-string/jumbo v1, "CNEServiceApp"

    const-string/jumbo v2, "test channel, sent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 93
    const-string/jumbo v0, "cneservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/quicinc/cne/CNEService/CNEServiceApp;->needStartCne()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/quicinc/cne/CNEService/CNEServiceApp;->startCne()V

    .line 92
    :cond_0
    return-void
.end method
