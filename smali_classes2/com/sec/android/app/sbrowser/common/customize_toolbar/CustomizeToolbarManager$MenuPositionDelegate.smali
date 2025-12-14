.class Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager$MenuPositionDelegate;
.super Lcom/sec/android/app/sbrowser/common/customize_toolbar/LargeScreenMenuPosition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuPositionDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager$MenuPositionDelegate;->this$0:Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/LargeScreenMenuPosition;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager$MenuPositionDelegate;-><init>(Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;)V

    return-void
.end method


# virtual methods
.method public getPosition(Landroid/app/Activity;I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager$MenuPositionDelegate;->this$0:Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->e(Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/LargeScreenMenuPosition;->getPosition(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;I)I

    move-result p0

    return p0
.end method
