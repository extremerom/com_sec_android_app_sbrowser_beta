.class public final LEc/v;
.super LEc/x;
.source "SourceFile"


# static fields
.field public static final c:LEc/v;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LEc/v;

    sget-object v1, LEc/h;->i:LEc/h;

    const-string v2, "Int"

    invoke-direct {v0, v1, v2}, LEc/x;-><init>(Lsb/k;Ljava/lang/String;)V

    sput-object v0, LEc/v;->c:LEc/v;

    return-void
.end method
