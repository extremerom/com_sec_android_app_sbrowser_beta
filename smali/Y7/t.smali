.class public final LY7/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, LY7/t;->a:Ljava/lang/String;

    iget-object v1, p0, LY7/t;->b:Ljava/lang/String;

    iget-object p0, p0, LY7/t;->c:Ljava/lang/String;

    const-string v2, "PhoneticName{phoneticFamilyName=\'"

    const-string v3, "\', phoneticGivenName=\'"

    const-string v4, "\', phoneticAdditionalName=\'"

    invoke-static {v2, v0, v3, v1, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-static {v0, p0, v1}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
