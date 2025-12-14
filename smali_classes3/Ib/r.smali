.class public abstract LIb/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lhc/f;

.field public static final b:Lhc/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "getFirst"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    sput-object v0, LIb/r;->a:Lhc/f;

    const-string v0, "getLast"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    sput-object v0, LIb/r;->b:Lhc/f;

    return-void
.end method
