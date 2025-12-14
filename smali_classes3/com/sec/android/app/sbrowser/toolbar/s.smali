.class public final synthetic Lcom/sec/android/app/sbrowser/toolbar/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager$MenuItemObserver;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/s;->a:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    return-void
.end method


# virtual methods
.method public final notifyMenuItemChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/s;->a:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->a(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)V

    return-void
.end method
