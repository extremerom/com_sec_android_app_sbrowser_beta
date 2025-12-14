.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewHolderItem;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0008\u0087\u0008\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\r\u0010\u0010\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0010\u0010\u000eJ\r\u0010\u0011\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0011\u0010\u000eJ\r\u0010\u0012\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u0019\u0010\u0017\u001a\u00020\u00082\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0019\u0010\u0019\u001a\u00020\u00082\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0018JL\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008H\u00c6\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u001d\u001a\u00020\u001cH\u00d6\u0001\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u0004H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001f\u0010\u000eJ\u001a\u0010 \u001a\u00020\u00082\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u00d6\u0003\u00a2\u0006\u0004\u0008 \u0010\u0018R\u001a\u0010\u0003\u001a\u00020\u00028\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010!\u001a\u0004\u0008\"\u0010#R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010$\u001a\u0004\u0008%\u0010\u000e\"\u0004\u0008&\u0010\'R\"\u0010\u0006\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010$\u001a\u0004\u0008(\u0010\u000e\"\u0004\u0008)\u0010\'R\"\u0010\u0007\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010$\u001a\u0004\u0008*\u0010\u000e\"\u0004\u0008+\u0010\'R\u001a\u0010\t\u001a\u00020\u00088\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010,\u001a\u0004\u0008\t\u0010\u0013R\u001a\u0010\n\u001a\u00020\u00088\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010,\u001a\u0004\u0008\n\u0010\u0013R\u0011\u0010-\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010\u0013\u00a8\u0006."
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewHolderItem;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;",
        "item",
        "",
        "itemListVisibility",
        "checkedItemCount",
        "disabledItemCount",
        "",
        "isFirstItem",
        "isLastItem",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;IIIZZ)V",
        "incrementCheckedItemCount",
        "()I",
        "decrementCheckedItemCount",
        "incrementDisabledItemCount",
        "decrementDisabledItemCount",
        "isAllItemsSelected",
        "()Z",
        "isAllItemsDisabled",
        "",
        "other",
        "itemEquals",
        "(Ljava/lang/Object;)Z",
        "contentEquals",
        "copy",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;IIIZZ)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "equals",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;",
        "getItem",
        "()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;",
        "I",
        "getItemListVisibility",
        "setItemListVisibility",
        "(I)V",
        "getCheckedItemCount",
        "setCheckedItemCount",
        "getDisabledItemCount",
        "setDisabledItemCount",
        "Z",
        "isCombinedLastItem",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private volatile checkedItemCount:I

.field private volatile disabledItemCount:I

.field private final isFirstItem:Z

.field private final isLastItem:Z

.field private final item:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile itemListVisibility:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;IIIZZ)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->item:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->itemListVisibility:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->checkedItemCount:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->disabledItemCount:I

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->isFirstItem:Z

    iput-boolean p6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->isLastItem:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;IIIZZILtb/f;)V
    .locals 6

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    and-int/lit8 v3, p7, 0x8

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, p4

    :goto_2
    and-int/lit8 v4, p7, 0x10

    if-eqz v4, :cond_3

    move v4, v1

    goto :goto_3

    :cond_3
    move v4, p5

    :goto_3
    and-int/lit8 v5, p7, 0x20

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move v1, p6

    :goto_4
    move-object p2, p0

    move-object p3, p1

    move p4, v0

    move p5, v2

    move p6, v3

    move p7, v4

    move p8, v1

    invoke-direct/range {p2 .. p8}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;IIIZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;IIIZZILjava/lang/Object;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->item:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->itemListVisibility:I

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->checkedItemCount:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->disabledItemCount:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->isFirstItem:Z

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-boolean p6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->isLastItem:Z

    :cond_5
    move v3, p6

    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->copy(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;IIIZZ)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public contentEquals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.sec.android.app.sbrowser.quickaccess.ui.viewmodel.QuickAccessSyncHeaderViewHolderItem"

    invoke-static {p1, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->getItem()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->getItem()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;

    move-result-object v3

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->itemListVisibility:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->itemListVisibility:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->checkedItemCount:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->checkedItemCount:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->disabledItemCount:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->disabledItemCount:I

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->isFirstItem()Z

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->isFirstItem()Z

    move-result v3

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->isLastItem()Z

    move-result p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->isLastItem()Z

    move-result p1

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0
.end method

.method public final copy(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;IIIZZ)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;
    .locals 7
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "item"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;IIIZZ)V

    return-object p0
.end method

.method public final declared-synchronized decrementCheckedItemCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->checkedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->checkedItemCount:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->checkedItemCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized decrementDisabledItemCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->disabledItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->disabledItemCount:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->disabledItemCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->item:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->item:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->itemListVisibility:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->itemListVisibility:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->checkedItemCount:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->checkedItemCount:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->disabledItemCount:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->disabledItemCount:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->isFirstItem:Z

    iget-boolean v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->isFirstItem:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->isLastItem:Z

    iget-boolean p1, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->isLastItem:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public bridge synthetic getItem()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncDto;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->getItem()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;

    move-result-object p0

    return-object p0
.end method

.method public getItem()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->item:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;

    return-object p0
.end method

.method public final declared-synchronized getItemListVisibility()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->itemListVisibility:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->item:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->itemListVisibility:I

    invoke-static {v2, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->checkedItemCount:I

    invoke-static {v2, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->disabledItemCount:I

    invoke-static {v2, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->isFirstItem:Z

    invoke-static {v0, v1, v2}, LB/e;->e(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->isLastItem:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final declared-synchronized incrementCheckedItemCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->checkedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->checkedItemCount:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->checkedItemCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized incrementDisabledItemCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->disabledItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->disabledItemCount:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->disabledItemCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized isAllItemsDisabled()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->getItem()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->getTotalItemCount()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->disabledItemCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized isAllItemsSelected()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->getItem()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->getTotalItemCount()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->checkedItemCount:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->disabledItemCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized isCombinedLastItem()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->isLastItem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->itemListVisibility:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isFirstItem()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->isFirstItem:Z

    return p0
.end method

.method public isLastItem()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->isLastItem:Z

    return p0
.end method

.method public itemEquals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-class v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const-string v0, "null cannot be cast to non-null type com.sec.android.app.sbrowser.quickaccess.ui.viewmodel.QuickAccessSyncHeaderViewHolderItem"

    invoke-static {p1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->getItem()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->getItem()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final declared-synchronized setItemListVisibility(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->itemListVisibility:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->item:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->itemListVisibility:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->checkedItemCount:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->disabledItemCount:I

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->isFirstItem:Z

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->isLastItem:Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "QuickAccessSyncHeaderViewHolderItem(item="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", itemListVisibility="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", checkedItemCount="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", disabledItemCount="

    const-string v1, ", isFirstItem="

    invoke-static {v5, v2, v0, v3, v1}, Lt/b;->A(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isLastItem="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
