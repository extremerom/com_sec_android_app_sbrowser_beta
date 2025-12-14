.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/p;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/L;->a:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Lsb/a;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/L;->a:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->h(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;ILsb/a;I)Ldb/r;

    move-result-object p0

    return-object p0
.end method
