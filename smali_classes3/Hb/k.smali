.class public final LHb/k;
.super LHb/l;
.source "SourceFile"


# static fields
.field public static final c:LHb/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LHb/k;

    sget-object v1, LGb/q;->f:Lhc/c;

    const-string v2, "SuspendFunction"

    invoke-direct {v0, v1, v2}, LHb/l;-><init>(Lhc/c;Ljava/lang/String;)V

    sput-object v0, LHb/k;->c:LHb/k;

    return-void
.end method
