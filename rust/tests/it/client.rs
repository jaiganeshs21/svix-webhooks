use svix_server::{
    api::{Svix, SvixOptions},
    error,
};

#[test]
fn test_svix_options_server_url() {
    let svix = Svix::new(
        "key".to_string(),
        Some(SvixOptions {
            server_url: Some("http://localhost:8000".to_string()),
            ..Default::default()
        }),
    );
    assert_eq!(
        svix.cfg.base_path,
        "http://localhost:8000"
    );

    let svix = Svix::new(
        "key".to_string(),
        Some(SvixOptions {
            server_url: Some("http://localhost:8000/".to_string()),
            ..Default::default()
        }),
    );
    assert_eq!(
        svix.cfg.base_path,
        "http://localhost:8000"
    );
}
