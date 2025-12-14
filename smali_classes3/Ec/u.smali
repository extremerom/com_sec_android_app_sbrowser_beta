.class public final LEc/u;
.super LEc/x;
.source "SourceFile"


# static fields
.field public static final c:LEc/u;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LEc/u;

    sget-object v1, LEc/h;->h:LEc/h;

    const-string v2, "Boolean"

    invoke-direct {v0, v1, v2}, LEc/x;-><init>(Lsb/k;Ljava/lang/String;)V

    sput-object v0, LEc/u;->c:LEc/u;

    return-void
.end method
