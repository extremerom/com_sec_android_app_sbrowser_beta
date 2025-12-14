.class public final Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u0001Bt\u00126\u0010\t\u001a2\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\u00080\u0002\u00123\u0010\u0010\u001a/\u0012%\u0012#\u0012\u0004\u0012\u00020\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u000b\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u00080\n\u00a2\u0006\u0004\u0008\u0011\u0010\u0012RG\u0010\t\u001a2\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\u00080\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015RD\u0010\u0010\u001a/\u0012%\u0012#\u0012\u0004\u0012\u00020\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u000b\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u00080\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;",
        "",
        "Lkotlin/Function2;",
        "Landroid/view/View;",
        "Lkotlin/ParameterName;",
        "name",
        "itemRecyclerView",
        "headerIndicator",
        "Ldb/r;",
        "onHeaderClick",
        "Lkotlin/Function1;",
        "Ldb/j;",
        "",
        "",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;",
        "historyItemGroup",
        "onHeaderLongClick",
        "<init>",
        "(Lsb/n;Lsb/k;)V",
        "Lsb/n;",
        "getOnHeaderClick",
        "()Lsb/n;",
        "Lsb/k;",
        "getOnHeaderLongClick",
        "()Lsb/k;",
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
.field private final onHeaderClick:Lsb/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsb/n;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onHeaderLongClick:Lsb/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsb/k;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsb/n;Lsb/k;)V
    .locals 1
    .param p1    # Lsb/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lsb/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/n;",
            "Lsb/k;",
            ")V"
        }
    .end annotation

    const-string v0, "onHeaderClick"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onHeaderLongClick"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;->onHeaderClick:Lsb/n;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;->onHeaderLongClick:Lsb/k;

    return-void
.end method


# virtual methods
.method public final getOnHeaderClick()Lsb/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsb/n;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;->onHeaderClick:Lsb/n;

    return-object p0
.end method

.method public final getOnHeaderLongClick()Lsb/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsb/k;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;->onHeaderLongClick:Lsb/k;

    return-object p0
.end method
