.class public Lcom/sec/terrace/browser/TinSALoggingConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EVENT_MAP_ACTION_MODE_ITEMS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/TinSALoggingConstants$1;

    invoke-direct {v0}, Lcom/sec/terrace/browser/TinSALoggingConstants$1;-><init>()V

    sput-object v0, Lcom/sec/terrace/browser/TinSALoggingConstants;->EVENT_MAP_ACTION_MODE_ITEMS:Landroid/util/SparseArray;

    return-void
.end method
