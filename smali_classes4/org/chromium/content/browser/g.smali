.class public final synthetic Lorg/chromium/content/browser/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/permissions/PermissionCallback;


# instance fields
.field public final synthetic a:Lorg/chromium/content/browser/ContactsDialogHost;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/content/browser/ContactsDialogHost;ZZZZZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/g;->a:Lorg/chromium/content/browser/ContactsDialogHost;

    iput-boolean p2, p0, Lorg/chromium/content/browser/g;->b:Z

    iput-boolean p3, p0, Lorg/chromium/content/browser/g;->c:Z

    iput-boolean p4, p0, Lorg/chromium/content/browser/g;->d:Z

    iput-boolean p5, p0, Lorg/chromium/content/browser/g;->e:Z

    iput-boolean p6, p0, Lorg/chromium/content/browser/g;->f:Z

    iput-boolean p7, p0, Lorg/chromium/content/browser/g;->g:Z

    iput-object p8, p0, Lorg/chromium/content/browser/g;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 10

    iget-boolean v4, p0, Lorg/chromium/content/browser/g;->e:Z

    iget-boolean v5, p0, Lorg/chromium/content/browser/g;->f:Z

    iget-object v0, p0, Lorg/chromium/content/browser/g;->a:Lorg/chromium/content/browser/ContactsDialogHost;

    iget-boolean v1, p0, Lorg/chromium/content/browser/g;->b:Z

    iget-boolean v2, p0, Lorg/chromium/content/browser/g;->c:Z

    iget-boolean v3, p0, Lorg/chromium/content/browser/g;->d:Z

    iget-boolean v6, p0, Lorg/chromium/content/browser/g;->g:Z

    iget-object v7, p0, Lorg/chromium/content/browser/g;->h:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    invoke-static/range {v0 .. v9}, Lorg/chromium/content/browser/ContactsDialogHost;->a(Lorg/chromium/content/browser/ContactsDialogHost;ZZZZZZLjava/lang/String;[Ljava/lang/String;[I)V

    return-void
.end method
