.class public final LGb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:LGb/b;

.field public static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LGb/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LGb/b;->a:LGb/b;

    sget-object v0, Ldb/h;->PUBLICATION:Ldb/h;

    sget-object v1, LGb/a;->b:LGb/a;

    invoke-static {v0, v1}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object v0

    sput-object v0, LGb/b;->b:Ljava/lang/Object;

    return-void
.end method
