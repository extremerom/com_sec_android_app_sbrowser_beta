.class public final LIb/b;
.super LGb/i;
.source "SourceFile"


# static fields
.field public static final f:LIb/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LIb/b;

    new-instance v1, Lxc/l;

    const-string v2, "FallbackBuiltIns"

    invoke-direct {v1, v2}, Lxc/l;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, LGb/i;-><init>(Lxc/l;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LGb/i;->c(Z)V

    sput-object v0, LIb/b;->f:LIb/b;

    return-void
.end method


# virtual methods
.method public final bridge synthetic q()LLb/d;
    .locals 0

    sget-object p0, LLb/a;->c:LLb/a;

    return-object p0
.end method
