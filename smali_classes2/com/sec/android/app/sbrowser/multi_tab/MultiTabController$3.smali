.class Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/secret_mode/SecretModeAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->toggleSecretMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->onSecretModeAuthResult(Z)V

    return-void
.end method
