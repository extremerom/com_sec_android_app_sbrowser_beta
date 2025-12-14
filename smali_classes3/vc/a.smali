.class public final Lvc/a;
.super Ltc/a;
.source "SourceFile"


# static fields
.field public static final m:Lvc/a;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v14, Lvc/a;

    new-instance v1, Lic/g;

    invoke-direct {v1}, Lic/g;-><init>()V

    invoke-static {v1}, Ldc/b;->a(Lic/g;)V

    sget-object v2, Ldc/b;->a:Lic/o;

    const-string v0, "packageFqName"

    invoke-static {v2, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ldc/b;->c:Lic/o;

    const-string v0, "constructorAnnotation"

    invoke-static {v3, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ldc/b;->b:Lic/o;

    const-string v0, "classAnnotation"

    invoke-static {v4, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ldc/b;->d:Lic/o;

    const-string v0, "functionAnnotation"

    invoke-static {v5, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Ldc/b;->e:Lic/o;

    const-string v0, "propertyAnnotation"

    invoke-static {v6, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Ldc/b;->f:Lic/o;

    const-string v0, "propertyGetterAnnotation"

    invoke-static {v7, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Ldc/b;->g:Lic/o;

    const-string v0, "propertySetterAnnotation"

    invoke-static {v8, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Ldc/b;->i:Lic/o;

    const-string v0, "enumEntryAnnotation"

    invoke-static {v9, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Ldc/b;->h:Lic/o;

    const-string v0, "compileTimeValue"

    invoke-static {v10, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Ldc/b;->j:Lic/o;

    const-string v0, "parameterAnnotation"

    invoke-static {v11, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Ldc/b;->k:Lic/o;

    const-string v0, "typeAnnotation"

    invoke-static {v12, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Ldc/b;->l:Lic/o;

    const-string v0, "typeParameterAnnotation"

    invoke-static {v13, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Ltc/a;-><init>(Lic/g;Lic/o;Lic/o;Lic/o;Lic/o;Lic/o;Lic/o;Lic/o;Lic/o;Lic/o;Lic/o;Lic/o;Lic/o;)V

    sput-object v14, Lvc/a;->m:Lvc/a;

    return-void
.end method

.method public static a(Lhc/c;)Ljava/lang/String;
    .locals 4

    const-string v0, "fqName"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lhc/c;->a:Lhc/d;

    iget-object v1, p0, Lhc/d;->a:Ljava/lang/String;

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-static {v1, v2, v3}, LKc/r;->k(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lhc/d;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "default-package"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lhc/d;->f()Lhc/f;

    move-result-object p0

    invoke-virtual {p0}, Lhc/f;->c()Ljava/lang/String;

    move-result-object p0

    const-string v1, "asString(...)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const-string v1, ".kotlin_builtins"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
