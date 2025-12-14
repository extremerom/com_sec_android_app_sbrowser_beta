.class public abstract Luc/A;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lhc/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lhc/c;

    const-string v1, "kotlin.suspend"

    invoke-direct {v0, v1}, Lhc/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Luc/A;->a:Lhc/c;

    new-instance v0, Lhc/a;

    sget-object v1, LGb/q;->l:Lhc/c;

    const-string v2, "suspend"

    invoke-static {v2}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhc/a;-><init>(Lhc/c;Lhc/f;)V

    return-void
.end method
