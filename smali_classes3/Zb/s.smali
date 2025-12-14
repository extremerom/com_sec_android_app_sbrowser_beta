.class public abstract LZb/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LKb/i;

.field public static final b:LKb/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LKb/i;

    sget-object v1, LSb/x;->p:Lhc/c;

    const-string v2, "ENHANCED_NULLABILITY_ANNOTATION"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, LKb/i;-><init>(Lhc/c;)V

    sput-object v0, LZb/s;->a:LKb/i;

    new-instance v0, LKb/i;

    sget-object v1, LSb/x;->q:Lhc/c;

    const-string v2, "ENHANCED_MUTABILITY_ANNOTATION"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, LKb/i;-><init>(Lhc/c;)V

    sput-object v0, LZb/s;->b:LKb/i;

    return-void
.end method
