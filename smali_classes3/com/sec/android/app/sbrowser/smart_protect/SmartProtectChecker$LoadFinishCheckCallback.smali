.class Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$LoadFinishCheckCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadFinishCheckCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$LoadFinishCheckCallback;->this$0:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$LoadFinishCheckCallback;-><init>(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p0, "SmartProtectChecker"

    const-string p1, "Invalid message"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$LoadFinishCheckCallback;->this$0:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->confirmLoadFinish()Z

    :goto_0
    return v0
.end method
