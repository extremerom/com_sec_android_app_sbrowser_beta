.class public abstract Lcom/samsung/android/scloud/lib/setting/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field public static final b:Ljava/lang/Object;

.field public static final c:Ljava/beans/PropertyChangeSupport;

.field public static final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v1, v0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/samsung/android/scloud/lib/setting/i;->c:Ljava/beans/PropertyChangeSupport;

    const-wide/16 v0, 0xbb8

    sput-wide v0, Lcom/samsung/android/scloud/lib/setting/i;->d:J

    return-void
.end method
