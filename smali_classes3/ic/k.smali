.class public abstract Lic/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lic/x;


# instance fields
.field public a:Lic/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lic/e;->a:Lic/w;

    iput-object v0, p0, Lic/k;->a:Lic/e;

    return-void
.end method


# virtual methods
.method public abstract a()Lic/b;
.end method

.method public abstract b(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)Lic/k;
.end method

.method public abstract c(Lic/p;)Lic/k;
.end method
