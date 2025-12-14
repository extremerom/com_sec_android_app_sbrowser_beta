.class Lcom/sec/android/app/sbrowser/global_config/GlobalConfig$1;
.super Landroidx/lifecycle/X;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/X;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfig$1;->this$0:Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;

    invoke-direct {p0, p2}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Boolean;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/ObservableClassUtils;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfig$1;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method
