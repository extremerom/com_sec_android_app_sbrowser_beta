.class final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncHeaderViewHolder$onClick$1;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncHeaderViewHolder;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltb/j;",
        "Lsb/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x0

    const-class v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncHeaderViewHolder;

    const-string v4, "announceItemListVisibilityState"

    const-string v5, "announceItemListVisibilityState()V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ltb/i;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncHeaderViewHolder$onClick$1;->invoke()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final invoke()V
    .locals 0

    iget-object p0, p0, Ltb/c;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncHeaderViewHolder;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncHeaderViewHolder;->access$announceItemListVisibilityState(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncHeaderViewHolder;)V

    return-void
.end method
