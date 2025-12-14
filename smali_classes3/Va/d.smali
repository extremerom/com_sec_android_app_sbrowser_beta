.class public final LVa/d;
.super LVa/h;
.source "SourceFile"


# static fields
.field public static final c:LVa/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LVa/d;

    sget-object v1, LVa/i;->a:LVa/i;

    invoke-direct {v0, v1}, LVa/h;-><init>(LVa/i;)V

    sput-object v0, LVa/d;->c:LVa/d;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "BlankSpan"

    return-object p0
.end method
