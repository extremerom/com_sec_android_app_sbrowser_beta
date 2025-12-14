.class public final LHb/h;
.super LHb/l;
.source "SourceFile"


# static fields
.field public static final c:LHb/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LHb/h;

    sget-object v1, LGb/q;->l:Lhc/c;

    const-string v2, "Function"

    invoke-direct {v0, v1, v2}, LHb/l;-><init>(Lhc/c;Ljava/lang/String;)V

    sput-object v0, LHb/h;->c:LHb/h;

    return-void
.end method
