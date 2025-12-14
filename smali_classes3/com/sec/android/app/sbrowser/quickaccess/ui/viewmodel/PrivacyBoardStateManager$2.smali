.class Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUltraPowerSavingModeChanged(Z)V
    .locals 2

    const-string v0, "Ultra power saving mode: "

    const-string v1, "PrivacyBoardStateManager"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->e(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;Z)V

    return-void
.end method
