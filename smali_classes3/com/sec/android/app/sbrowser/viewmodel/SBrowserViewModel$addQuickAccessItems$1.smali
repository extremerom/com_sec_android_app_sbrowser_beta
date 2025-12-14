.class public final Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$addQuickAccessItems$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->addQuickAccessItems(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$addQuickAccessItems$1",
        "Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;",
        "Ldb/r;",
        "onSuccess",
        "()V",
        "Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;",
        "code",
        "onAborted",
        "(Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;)V",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $isFromWebpage:Z

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$addQuickAccessItems$1;->this$0:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$addQuickAccessItems$1;->$isFromWebpage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAborted(Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;)V
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;->ALREADY_EXIST:Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$addQuickAccessItems$1;->this$0:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->getUiEvent()Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;->postValue(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unknown error "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SBrowserViewModel"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$addQuickAccessItems$1;->this$0:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->getUiEvent()Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;

    move-result-object v0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$addQuickAccessItems$1;->$isFromWebpage:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;->postValue(I)V

    return-void
.end method
