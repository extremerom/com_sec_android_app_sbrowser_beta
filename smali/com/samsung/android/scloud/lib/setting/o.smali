.class public abstract Lcom/samsung/android/scloud/lib/setting/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:Lcom/samsung/android/scloud/lib/setting/n;

.field public static final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/scloud/lib/setting/o;->a:Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/scloud/lib/setting/n;

    invoke-direct {v0}, Lcom/samsung/android/scloud/lib/setting/n;-><init>()V

    sput-object v0, Lcom/samsung/android/scloud/lib/setting/o;->b:Lcom/samsung/android/scloud/lib/setting/n;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/samsung/android/scloud/lib/setting/o;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method
