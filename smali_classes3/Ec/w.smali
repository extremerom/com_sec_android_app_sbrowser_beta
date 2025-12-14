.class public final LEc/w;
.super LEc/x;
.source "SourceFile"


# static fields
.field public static final c:LEc/w;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LEc/w;

    sget-object v1, LEc/h;->j:LEc/h;

    const-string v2, "Unit"

    invoke-direct {v0, v1, v2}, LEc/x;-><init>(Lsb/k;Ljava/lang/String;)V

    sput-object v0, LEc/w;->c:LEc/w;

    return-void
.end method
