.class Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$LayoutStateChangeCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LayoutStateChangeCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le1/a;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$LayoutStateChangeCallback;->this$0:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroidx/window/WindowLayoutInfo;)V
    .locals 1

    const-string p1, "FlexModeManager"

    const-string v0, "LayoutStateChangeCallback"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$LayoutStateChangeCallback;->this$0:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->onFlexModeChanged()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/window/WindowLayoutInfo;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$LayoutStateChangeCallback;->accept(Landroidx/window/WindowLayoutInfo;)V

    return-void
.end method
