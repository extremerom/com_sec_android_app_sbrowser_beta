.class public final Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0008\u0007*\u0001\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001b\u0010\t\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion;",
        "",
        "<init>",
        "()V",
        "com/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion$ITEM_COMPARATOR$2$1",
        "ITEM_COMPARATOR$delegate",
        "Ldb/f;",
        "getITEM_COMPARATOR",
        "()Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion$ITEM_COMPARATOR$2$1;",
        "ITEM_COMPARATOR",
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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getITEM_COMPARATOR(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion;)Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion$ITEM_COMPARATOR$2$1;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion;->getITEM_COMPARATOR()Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion$ITEM_COMPARATOR$2$1;

    move-result-object p0

    return-object p0
.end method

.method private final getITEM_COMPARATOR()Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion$ITEM_COMPARATOR$2$1;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter;->access$getITEM_COMPARATOR$delegate$cp()Ldb/f;

    move-result-object p0

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion$ITEM_COMPARATOR$2$1;

    return-object p0
.end method
