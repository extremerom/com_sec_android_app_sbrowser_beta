.class public final Lq5/b;
.super Lb5/j;
.source "SourceFile"


# static fields
.field public static final a:Lb5/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb5/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lb5/g;

    new-instance v2, LA5/v;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LA5/v;-><init>(I)V

    const-string v3, "Fido.FIDO2_PRIVILEGED_API"

    invoke-direct {v1, v3, v2, v0}, Lb5/g;-><init>(Ljava/lang/String;Lb5/a;Lb5/f;)V

    sput-object v1, Lq5/b;->a:Lb5/g;

    return-void
.end method
