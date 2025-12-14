.class public final Lp3/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lp3/q;

.field public static final b:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp3/q;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lp3/q;->a:Lp3/q;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lp3/q;->b:Ljava/util/WeakHashMap;

    return-void
.end method
