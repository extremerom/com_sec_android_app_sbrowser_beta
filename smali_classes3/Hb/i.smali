.class public final LHb/i;
.super LHb/l;
.source "SourceFile"


# static fields
.field public static final c:LHb/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LHb/i;

    sget-object v1, LGb/q;->i:Lhc/c;

    const-string v2, "KFunction"

    invoke-direct {v0, v1, v2}, LHb/l;-><init>(Lhc/c;Ljava/lang/String;)V

    sput-object v0, LHb/i;->c:LHb/i;

    return-void
.end method
