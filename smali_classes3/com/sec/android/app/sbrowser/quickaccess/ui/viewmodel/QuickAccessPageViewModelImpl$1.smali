.class Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->addQuickAccessItems(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAborted(Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;->ALREADY_EXIST:Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->h(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;->postValue(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unknown error "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickAccessPageViewModelImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->h(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;->postValue(I)V

    return-void
.end method
