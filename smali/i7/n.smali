.class public abstract Li7/n;
.super Li7/o;
.source "SourceFile"


# instance fields
.field public final b:Ll7/u;


# direct methods
.method public constructor <init>(Ll7/u;)V
    .locals 0

    invoke-direct {p0}, Li7/o;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Li7/n;->b:Ll7/u;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "type == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
