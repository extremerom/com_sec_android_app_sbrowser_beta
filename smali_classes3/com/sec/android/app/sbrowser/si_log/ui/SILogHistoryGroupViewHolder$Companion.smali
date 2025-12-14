.class public final Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder$Companion;",
        "",
        "<init>",
        "()V",
        "LOG_TAG",
        "",
        "create",
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "groupListener",
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;",
        "itemListener",
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;)Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "parent"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "groupListener"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "itemListener"

    invoke-static {p3, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryGroupBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryGroupBinding;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;-><init>(Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryGroupBinding;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;Ltb/f;)V

    return-object p0
.end method
