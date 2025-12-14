.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/w0;
.implements Lt/v0;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/p;->a:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lt/x0;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/p;->a:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;->a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;Lt/x0;)V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/p;->a:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;->b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
