.class public final LHb/j;
.super LHb/l;
.source "SourceFile"


# static fields
.field public static final c:LHb/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LHb/j;

    sget-object v1, LGb/q;->i:Lhc/c;

    const-string v2, "KSuspendFunction"

    invoke-direct {v0, v1, v2}, LHb/l;-><init>(Lhc/c;Ljava/lang/String;)V

    sput-object v0, LHb/j;->c:LHb/j;

    return-void
.end method
